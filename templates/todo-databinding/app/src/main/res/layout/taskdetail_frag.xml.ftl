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
<layout xmlns:android="http://schemas.android.com/apk/res/android">

    <data>

        <import type="android.view.View" />

        <variable
            name="task"
            type="${packageName}.data.Task" />

        <variable
            name="presenter"
            type="${packageName}.taskdetail.TaskDetailContract.Presenter" />
    </data>

    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:orientation="vertical"
        android:paddingBottom="@dimen/activity_vertical_margin"
        android:paddingLeft="@dimen/activity_horizontal_margin"
        android:paddingRight="@dimen/activity_horizontal_margin"
        android:paddingTop="@dimen/activity_vertical_margin">

        <LinearLayout
            android:layout_width="match_parent"
            android:layout_height="match_parent"
            android:orientation="vertical"
            android:paddingBottom="@dimen/activity_vertical_margin"
            android:paddingLeft="@dimen/activity_horizontal_margin"
            android:paddingRight="@dimen/activity_horizontal_margin"
            android:paddingTop="@dimen/activity_vertical_margin"
            android:visibility="@{task == null ? View.VISIBLE : View.GONE}">

            <TextView
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:text="@string/no_data"
                android:textAppearance="?android:attr/textAppearanceLarge" />
        </LinearLayout>

        <RelativeLayout
            android:layout_width="match_parent"
            android:layout_height="match_parent"
            android:orientation="vertical"
            android:paddingBottom="@dimen/activity_vertical_margin"
            android:paddingLeft="@dimen/activity_horizontal_margin"
            android:paddingRight="@dimen/activity_horizontal_margin"
            android:paddingTop="@dimen/activity_vertical_margin"
            android:visibility="@{task == null ? View.GONE : View.VISIBLE}">

            <CheckBox
                android:id="@+id/task_detail_complete"
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:layout_gravity="center_vertical"
                android:layout_marginRight="@dimen/activity_horizontal_margin"
                android:checked="@{task.completed}"
                android:onCheckedChanged="@{(cb, isChecked) -> presenter.completeChanged(task, isChecked)}" />

            <TextView
                android:id="@+id/task_detail_title"
                android:layout_toRightOf="@id/task_detail_complete"
                android:layout_width="match_parent"
                android:layout_height="wrap_content"
                android:text="@{task.title}"
                android:textAppearance="?android:attr/textAppearanceLarge" />

            <TextView
                android:id="@+id/task_detail_description"
                android:layout_toRightOf="@id/task_detail_complete"
                android:layout_below="@id/task_detail_title"
                android:layout_width="match_parent"
                android:layout_height="wrap_content"
                android:text="@{task.description}"
                android:textAppearance="?android:attr/textAppearanceMedium" />

        </RelativeLayout>
    </LinearLayout>
</layout>
