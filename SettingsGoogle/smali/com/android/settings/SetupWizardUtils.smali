.class public Lcom/android/settings/SetupWizardUtils;
.super Ljava/lang/Object;
.source "SetupWizardUtils.java"


# direct methods
.method public static copyLifecycleExtra(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    const-string v0, "firstRun"

    const-string v1, "isSetupFlow"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    return-void
.end method

.method public static getTheme(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 13

    invoke-static {p1}, Lcom/android/settings/SetupWizardUtils;->getThemeString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result p1

    const v1, 0x7f130134

    const v2, 0x7f13013c

    const/4 v3, 0x3

    const-string v4, "glif_v3"

    const/4 v5, 0x2

    const-string v6, "glif_v2"

    const/4 v7, 0x1

    const-string v8, "glif_v3_light"

    const/4 v9, 0x0

    const-string v10, "glif_v2_light"

    const/4 v11, -0x1

    if-eqz p1, :cond_c

    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    move-result p0

    const/4 p1, 0x4

    const-string v12, "glif_light"

    if-eqz p0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    :goto_0
    move v3, v11

    goto :goto_1

    :sswitch_0
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v3, p1

    goto :goto_1

    :sswitch_2
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :sswitch_3
    const-string p0, "glif"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    :sswitch_4
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v3, v7

    goto :goto_1

    :sswitch_5
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v3, v9

    :cond_5
    :goto_1
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    const p0, 0x7f130132

    return p0

    :pswitch_1
    const p0, 0x7f13013d

    return p0

    :pswitch_2
    const p0, 0x7f130135

    return p0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_1

    :goto_2
    move v3, v11

    goto :goto_3

    :sswitch_6
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    move v3, p1

    goto :goto_3

    :sswitch_7
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_2

    :sswitch_8
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_2

    :cond_8
    move v3, v5

    goto :goto_3

    :sswitch_9
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_2

    :cond_9
    move v3, v7

    goto :goto_3

    :sswitch_a
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_2

    :cond_a
    move v3, v9

    :cond_b
    :goto_3
    packed-switch v3, :pswitch_data_1

    goto :goto_6

    :pswitch_3
    const p0, 0x7f130133

    return p0

    :pswitch_4
    return v2

    :pswitch_5
    return v1

    :pswitch_6
    const p0, 0x7f130141

    return p0

    :pswitch_7
    const p0, 0x7f130137

    return p0

    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_2

    :goto_4
    move v3, v11

    goto :goto_5

    :sswitch_b
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_4

    :sswitch_c
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_4

    :cond_d
    move v3, v5

    goto :goto_5

    :sswitch_d
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_4

    :cond_e
    move v3, v7

    goto :goto_5

    :sswitch_e
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_4

    :cond_f
    move v3, v9

    :cond_10
    :goto_5
    packed-switch v3, :pswitch_data_2

    goto :goto_6

    :pswitch_8
    return v2

    :pswitch_9
    return v1

    :cond_11
    :goto_6
    const p0, 0x7f130131

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x7edf2f90 -> :sswitch_5
        -0x49f8f44f -> :sswitch_4
        0x3074c2 -> :sswitch_3
        0x6e4af19 -> :sswitch_2
        0x6e4af1a -> :sswitch_1
        0x2dc1f359 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7edf2f90 -> :sswitch_a
        -0x49f8f44f -> :sswitch_9
        0x6e4af19 -> :sswitch_8
        0x6e4af1a -> :sswitch_7
        0x2dc1f359 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x7edf2f90 -> :sswitch_e
        -0x49f8f44f -> :sswitch_d
        0x6e4af19 -> :sswitch_c
        0x6e4af1a -> :sswitch_b
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public static getThemeString(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "theme"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Landroid/sysprop/SetupWizardProperties;->theme()Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public static getTransparentTheme(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 3

    invoke-static {p0, p1}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Context;Landroid/content/Intent;)I

    move-result p1

    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    move-result p0

    const v0, 0x7f130136

    const v1, 0x7f130138

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    const v2, 0x7f13013d

    if-ne p1, v2, :cond_1

    const v0, 0x7f13013f

    goto :goto_1

    :cond_1
    const v2, 0x7f130141

    if-ne p1, v2, :cond_2

    const v0, 0x7f130143

    goto :goto_1

    :cond_2
    const v2, 0x7f130135

    if-ne p1, v2, :cond_3

    goto :goto_1

    :cond_3
    const v0, 0x7f130137

    if-ne p1, v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    const v0, 0x7f130132

    if-ne p1, v0, :cond_5

    const v0, 0x7f1301cd

    goto :goto_1

    :cond_5
    const v0, 0x7f130133

    if-ne p1, v0, :cond_6

    const v0, 0x7f1301ce

    goto :goto_1

    :cond_6
    const v0, 0x7f13013c

    if-ne p1, v0, :cond_7

    const v0, 0x7f130145

    goto :goto_1

    :cond_7
    const v0, 0x7f130134

    if-ne p1, v0, :cond_8

    const v0, 0x7f130139

    goto :goto_1

    :cond_8
    const v0, 0x7f130131

    if-ne p1, v0, :cond_9

    const v0, 0x7f1301cf

    goto :goto_1

    :cond_9
    move v0, p0

    :goto_1
    return v0
.end method
