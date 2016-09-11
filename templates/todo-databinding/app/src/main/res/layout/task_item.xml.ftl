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

        <variable
            name="task"
            type="${packageName}.data.Task" />

        <variable
            name="actionHandler"
            type="${packageName}.tasks.TasksItemActionHandler" />
    </data>

    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="?android:attr/listPreferredItemHeight"
        android:background="@{task.isCompleted ? @drawable/list_completed_touch_feedback : @drawable/touch_feedback}"
        android:orientation="horizontal"
        android:paddingLeft="@dimen/activity_horizontal_margin"
        android:paddingRight="@dimen/activity_horizontal_margin"
        android:paddingBottom="@dimen/list_item_padding"
        android:paddingTop="@dimen/list_item_padding"
        android:onClick="@{() -> actionHandler.taskClicked(task)}">

        <CheckBox
            android:id="@+id/complete"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:layout_gravity="center_vertical"
            android:checked="@{task.isCompleted}"
            android:onCheckedChanged="@{(cb, isChecked) -> actionHandler.completeChanged(task, isChecked)}" />

        <TextView
            android:id="@+id/title"
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:layout_gravity="center_vertical"
            android:layout_marginLeft="@dimen/activity_horizontal_margin"
            android:textAppearance="@style/TextAppearance.AppCompat.Title"
            android:text="@{task.titleForList}" />
    </LinearLayout>
</layout>