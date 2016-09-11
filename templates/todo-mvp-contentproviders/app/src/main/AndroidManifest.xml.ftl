<?xml version="1.0" encoding="utf-8"?><!--
  ~ Copyright (C) 2015 The Android Open Source Project
  ~
  ~ Licensed under the Apache License, Version 2.0 (the "License");
  ~ you may not use this file except in compliance with the License.
  ~ You may obtain a copy of the License at
  ~
  ~      http://www.apache.org/licenses/LICENSE-2.0
  ~
  ~ Unless required by applicable law or agreed to in writing, software
  ~ distributed under the License is distributed on an "AS IS" BASIS,
  ~ WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  ~ See the License for the specific language governing permissions and
  ~ limitations under the License.
  -->

<manifest xmlns:android="http://schemas.android.com/apk/res/android"
  package="${packageName}">

  <application
    android:allowBackup="false"
    android:icon="@mipmap/ic_launcher"
    android:label="@string/app_name"
    android:supportsRtl="true"
    android:theme="@style/AppTheme">
    <activity
      android:name="${packageName}.tasks.TasksActivity"
      android:theme="@style/AppTheme.OverlapSystemBar">
      <intent-filter>
        <action android:name="android.intent.action.MAIN" />
        <category android:name="android.intent.category.LAUNCHER" />
      </intent-filter>
    </activity>
    <activity android:name="${packageName}.taskdetail.TaskDetailActivity">

      <intent-filter>
        <action android:name="android.intent.action.VIEW" />
        <category android:name="android.intent.category.DEFAULT" />

        <data android:mimeType="vnd.android.cursor.item/vnd.${packageName}.task" />
      </intent-filter>
    </activity>

    <activity android:name="${packageName}.addedittask.AddEditTaskActivity" />
    <activity android:name="${packageName}.statistics.StatisticsActivity" />

    <provider
      android:name="${packageName}.data.source.TasksProvider"
      android:authorities="${packageName}"
      android:exported="false" />
  </application>

</manifest>
