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
    .locals 18

    invoke-static/range {p1 .. p1}, Lcom/android/settings/SetupWizardUtils;->getThemeString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-static/range {p1 .. p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v1

    const v2, 0x7f130163

    const v3, 0x7f13016b

    const v4, 0x7f130175

    const-string v6, "glif_v4"

    const-string v8, "glif_v3"

    const/4 v9, 0x3

    const-string v10, "glif_v2"

    const/4 v11, 0x2

    const-string v12, "glif_v4_light"

    const/4 v13, 0x1

    const-string v14, "glif_v3_light"

    const/4 v15, 0x0

    const-string v5, "glif_v2_light"

    const/16 v16, -0x1

    if-eqz v1, :cond_10

    invoke-static/range {p0 .. p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    move-result v1

    const/16 v17, 0x6

    const-string v7, "glif_light"

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move/from16 v5, v16

    goto :goto_1

    :sswitch_0
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x7

    goto :goto_1

    :sswitch_1
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v5, v17

    goto :goto_1

    :sswitch_2
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x5

    goto :goto_1

    :sswitch_3
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x4

    goto :goto_1

    :sswitch_4
    const-string v1, "glif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v5, v9

    goto :goto_1

    :sswitch_5
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move v5, v11

    goto :goto_1

    :sswitch_6
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move v5, v13

    goto :goto_1

    :sswitch_7
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    move v5, v15

    :goto_1
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    const v0, 0x7f130161

    return v0

    :pswitch_1
    const v0, 0x7f130176

    return v0

    :pswitch_2
    const v0, 0x7f13016c

    return v0

    :pswitch_3
    const v0, 0x7f130164

    return v0

    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    :goto_2
    move/from16 v5, v16

    goto :goto_3

    :sswitch_8
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2

    :cond_9
    move/from16 v5, v17

    goto :goto_3

    :sswitch_9
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_2

    :cond_a
    const/4 v5, 0x5

    goto :goto_3

    :sswitch_a
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2

    :cond_b
    const/4 v5, 0x4

    goto :goto_3

    :sswitch_b
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_2

    :cond_c
    move v5, v9

    goto :goto_3

    :sswitch_c
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_2

    :cond_d
    move v5, v11

    goto :goto_3

    :sswitch_d
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_2

    :cond_e
    move v5, v13

    goto :goto_3

    :sswitch_e
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_2

    :cond_f
    move v5, v15

    :goto_3
    packed-switch v5, :pswitch_data_1

    goto/16 :goto_6

    :pswitch_4
    const v0, 0x7f130162

    return v0

    :pswitch_5
    return v4

    :pswitch_6
    return v3

    :pswitch_7
    return v2

    :pswitch_8
    const v0, 0x7f130177

    return v0

    :pswitch_9
    const v0, 0x7f130170

    return v0

    :pswitch_a
    const v0, 0x7f130166

    return v0

    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_2

    :goto_4
    move/from16 v5, v16

    goto :goto_5

    :sswitch_f
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_4

    :cond_11
    const/4 v5, 0x5

    goto :goto_5

    :sswitch_10
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_4

    :cond_12
    const/4 v5, 0x4

    goto :goto_5

    :sswitch_11
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_4

    :cond_13
    move v5, v9

    goto :goto_5

    :sswitch_12
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_4

    :cond_14
    move v5, v11

    goto :goto_5

    :sswitch_13
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_4

    :cond_15
    move v5, v13

    goto :goto_5

    :sswitch_14
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_4

    :cond_16
    move v5, v15

    :goto_5
    packed-switch v5, :pswitch_data_2

    goto :goto_6

    :pswitch_b
    return v4

    :pswitch_c
    return v3

    :pswitch_d
    return v2

    :cond_17
    :goto_6
    const v0, 0x7f130160

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7edf2f90 -> :sswitch_7
        -0x49f8f44f -> :sswitch_6
        -0x1512b90e -> :sswitch_5
        0x3074c2 -> :sswitch_4
        0x6e4af19 -> :sswitch_3
        0x6e4af1a -> :sswitch_2
        0x6e4af1b -> :sswitch_1
        0x2dc1f359 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7edf2f90 -> :sswitch_e
        -0x49f8f44f -> :sswitch_d
        -0x1512b90e -> :sswitch_c
        0x6e4af19 -> :sswitch_b
        0x6e4af1a -> :sswitch_a
        0x6e4af1b -> :sswitch_9
        0x2dc1f359 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x7edf2f90 -> :sswitch_14
        -0x49f8f44f -> :sswitch_13
        -0x1512b90e -> :sswitch_12
        0x6e4af19 -> :sswitch_11
        0x6e4af1a -> :sswitch_10
        0x6e4af1b -> :sswitch_f
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

    const v0, 0x7f130165

    const v1, 0x7f130167

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    const v2, 0x7f13016c

    if-ne p1, v2, :cond_1

    const v0, 0x7f13016e

    goto :goto_1

    :cond_1
    const v2, 0x7f130170

    if-ne p1, v2, :cond_2

    const v0, 0x7f130172

    goto :goto_1

    :cond_2
    const v2, 0x7f130164

    if-ne p1, v2, :cond_3

    goto :goto_1

    :cond_3
    const v0, 0x7f130166

    if-ne p1, v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    const v0, 0x7f130161

    if-ne p1, v0, :cond_5

    const v0, 0x7f13020f

    goto :goto_1

    :cond_5
    const v0, 0x7f130162

    if-ne p1, v0, :cond_6

    const v0, 0x7f130210

    goto :goto_1

    :cond_6
    const v0, 0x7f13016b

    if-ne p1, v0, :cond_7

    const v0, 0x7f130174

    goto :goto_1

    :cond_7
    const v0, 0x7f130163

    if-ne p1, v0, :cond_8

    const v0, 0x7f130168

    goto :goto_1

    :cond_8
    const v0, 0x7f130160

    if-ne p1, v0, :cond_9

    const v0, 0x7f130211

    goto :goto_1

    :cond_9
    move v0, p0

    :goto_1
    return v0
.end method
