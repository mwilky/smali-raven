.class public Lcom/android/systemui/people/widget/AppWidgetOptionsHelper;
.super Ljava/lang/Object;
.source "AppWidgetOptionsHelper.java"


# direct methods
.method public static getPeopleTileKeyFromBundle(Landroid/os/Bundle;)Lcom/android/systemui/people/widget/PeopleTileKey;
    .locals 4

    const-string v0, "package_name"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "user_id"

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "shortcut_id"

    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/android/systemui/people/widget/PeopleTileKey;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/systemui/people/widget/PeopleTileKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1
.end method

.method public static removePeopleTileKey(Landroid/appwidget/AppWidgetManager;I)V
    .locals 1

    sget-object v0, Lcom/android/systemui/people/PeopleSpaceUtils;->EMPTY_KEY:Lcom/android/systemui/people/widget/PeopleTileKey;

    invoke-static {p0, p1, v0}, Lcom/android/systemui/people/widget/AppWidgetOptionsHelper;->setPeopleTileKey(Landroid/appwidget/AppWidgetManager;ILcom/android/systemui/people/widget/PeopleTileKey;)V

    return-void
.end method

.method public static setPeopleTileKey(Landroid/appwidget/AppWidgetManager;ILcom/android/systemui/people/widget/PeopleTileKey;)V
    .locals 3

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/systemui/people/widget/PeopleTileKey;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "shortcut_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/systemui/people/widget/PeopleTileKey;->getUserId()I

    move-result v1

    const-string/jumbo v2, "user_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p2}, Lcom/android/systemui/people/widget/PeopleTileKey;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "package_name"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidgetOptions(ILandroid/os/Bundle;)V

    return-void
.end method
