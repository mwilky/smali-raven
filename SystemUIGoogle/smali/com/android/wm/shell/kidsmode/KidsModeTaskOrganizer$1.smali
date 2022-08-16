.class public final Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$1;
.super Landroid/content/BroadcastReceiver;
.source "KidsModeTaskOrganizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$1;->this$0:Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$1;->this$0:Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;

    invoke-virtual {p0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->updateKidsModeState()V

    return-void
.end method
