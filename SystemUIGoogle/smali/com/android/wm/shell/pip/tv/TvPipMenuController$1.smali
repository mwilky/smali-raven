.class public final Lcom/android/wm/shell/pip/tv/TvPipMenuController$1;
.super Landroid/content/BroadcastReceiver;
.source "TvPipMenuController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/pip/tv/TvPipMenuController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/common/SystemWindows;Lcom/android/wm/shell/pip/PipMediaController;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipMenuController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->closeMenu()V

    return-void
.end method
