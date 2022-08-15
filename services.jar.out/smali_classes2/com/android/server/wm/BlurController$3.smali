.class public Lcom/android/server/wm/BlurController$3;
.super Landroid/database/ContentObserver;
.source "BlurController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/BlurController;-><init>(Landroid/content/Context;Landroid/os/PowerManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/BlurController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BlurController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/BlurController$3;->this$0:Lcom/android/server/wm/BlurController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/android/server/wm/BlurController$3;->this$0:Lcom/android/server/wm/BlurController;

    invoke-static {p1}, Lcom/android/server/wm/BlurController;->-$$Nest$mgetBlurDisabledSetting(Lcom/android/server/wm/BlurController;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/wm/BlurController;->-$$Nest$fputmBlurDisabledSetting(Lcom/android/server/wm/BlurController;Z)V

    iget-object p0, p0, Lcom/android/server/wm/BlurController$3;->this$0:Lcom/android/server/wm/BlurController;

    invoke-static {p0}, Lcom/android/server/wm/BlurController;->-$$Nest$mupdateBlurEnabled(Lcom/android/server/wm/BlurController;)V

    return-void
.end method
