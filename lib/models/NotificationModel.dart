import 'package:flutter/material.dart';

class NotificationModel {
    String title;
    String description;
    bool isViewd;
    NotificationModel({
      @required this.title,
      @required this.description,
      @required this.isViewd
    });
}

List<NotificationModel> notifications = [
  NotificationModel(
  title: "Lorem Ipsum",
  description: "Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem Ipsum",
  isViewd: false
  ),
  NotificationModel(
  title: "Lorem Ipsum",
  description: "Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem Ipsum",
  isViewd: false
  ),
  NotificationModel(
  title: "Lorem Ipsum",
  description: "Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem Ipsum",
  isViewd: false
  ),
  NotificationModel(
  title: "Lorem Ipsum",
  description: "Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem Ipsum",
  isViewd: false
  ),
];