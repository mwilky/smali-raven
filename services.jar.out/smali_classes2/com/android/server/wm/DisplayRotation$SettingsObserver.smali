.class public Lcom/android/server/wm/DisplayRotation$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DisplayRotation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayRotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingsObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DisplayRotation;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayRotation;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$SettingsObserver;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public observe()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$SettingsObserver;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v0}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmContext(Lcom/android/server/wm/DisplayRotation;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_rotation_suggestions"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    
    const-string v1, "tweaks_all_rotations"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "user_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "camera_autorotate"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$SettingsObserver;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {p0}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$mupdateSettings(Lcom/android/server/wm/DisplayRotation;)Z

    return-void
.end method

.method public onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation$SettingsObserver;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {p1}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$mupdateSettings(Lcom/android/server/wm/DisplayRotation;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$SettingsObserver;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {p0}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmService(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    :cond_0
    return-void
.end method
