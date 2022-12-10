package com.example.demo.controller;

import com.example.demo.ScoreApplication;
import javafx.application.Application;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.stage.Stage;

import java.io.File;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ViewMainController {

    String uid;

    @FXML
    private Button buttonDetail;

    @FXML
    private Button buttonToFarm;

    @FXML
    private Label labelExpAccmu;

    @FXML
    private Label labelExpRepu;

    @FXML
    private Label labelFieldAccmu;

    @FXML
    private Label labelFieldRepu;

    @FXML
    private Label labelLvAccmu;

    @FXML
    private Label labelLvRepu;

    @FXML
    private Label labelName;

    @FXML
    private Label labelUid;

    @FXML
    private ImageView imageViewBackground;

    @FXML
    private Button buttonRefresh;

    @FXML
    private ImageView imageViewIcon;

    @FXML
    void onButtonToFarm(ActionEvent event) throws IOException {
        ViewFarmController viewFarmController = new ViewFarmController(uid);
    }

    public ViewMainController(String id) throws IOException {
        this.uid = id;

        FXMLLoader fxmlLoader = new FXMLLoader(ScoreApplication.class.getResource("view-main.fxml"));
        fxmlLoader.setController(this);
        Stage stage = new Stage();
        Scene scene = new Scene(fxmlLoader.load());
        stage.setTitle("Score Information");
        stage.setScene(scene);
        stage.show();

        ServerProcess.synchronizeTables();
    }

    @FXML
    void onButtonDetailAction(ActionEvent event) throws IOException {
        ViewDetailController viewDetailController = new ViewDetailController(uid);
    }

    @FXML
    void onButtonToFarmAction(ActionEvent event) {

    }

    public void onButtonRefreshAction(ActionEvent event) {
        ServerProcess sp = ServerProcess.getServer();
        String name = "Name";
        String sql = "SELECT username FROM user WHERE id='" + uid + "'";
        try(Statement statement = sp.connection.createStatement()){
            ResultSet rs = statement.executeQuery(sql);
            rs.next();
            name = rs.getString("username");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        labelName.setText("User Name: " + name);
        labelUid.setText("Uid: " + uid);
        labelExpAccmu.setText("Focus score: " + sp.getScoreAccumulation(uid));
        labelExpRepu.setText("Reputation: " + sp.getScoreReputation(uid));
        labelLvAccmu.setText("Focus Lv.: " + sp.getLevel(sp.getScoreAccumulation(uid)));
        labelLvRepu.setText("Reputation Lv.: " + sp.getLevel(sp.getScoreReputation(uid)));
    }

    @FXML
    public void initialize(){
        ServerProcess sp = ServerProcess.getServer();

        File icon = new File("images/icon/" + uid + ".png");
        if(icon.exists())
            imageViewIcon.setImage(new Image("file:images/icon/" + uid + ".png", 100, 100, false, false));
        else
            imageViewIcon.setImage(new Image("file:images/icon/default.png", 100, 100, false, false));

        String name = "Name";
        String sql = "SELECT username FROM user WHERE id='" + uid + "'";
        try(Statement statement = sp.connection.createStatement()){
            ResultSet rs = statement.executeQuery(sql);
            rs.next();
            name = rs.getString("username");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        labelName.setText("User Name: " + name);
        labelUid.setText("Uid: " + uid);
        labelExpAccmu.setText("Focus score: " + sp.getScoreAccumulation(uid));
        labelExpRepu.setText("Reputation: " + sp.getScoreReputation(uid));
        labelLvAccmu.setText("Focus Lv.: " + sp.getLevel(sp.getScoreAccumulation(uid)));
        labelLvRepu.setText("Reputation Lv.: " + sp.getLevel(sp.getScoreReputation(uid)));
        imageViewBackground.setImage(new Image("file:images/67858877_p0.png", 900, 600, false, false));
        buttonRefresh.setGraphic(new ImageView(new Image("file:images/buttonRefresh.jpeg", 45,45,false,false)));
    }
}
