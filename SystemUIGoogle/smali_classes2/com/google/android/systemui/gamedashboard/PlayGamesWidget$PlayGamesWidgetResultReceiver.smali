.class public Lcom/google/android/systemui/gamedashboard/PlayGamesWidget$PlayGamesWidgetResultReceiver;
.super Landroid/os/ResultReceiver;
.source "PlayGamesWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayGamesWidgetResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget$PlayGamesWidgetResultReceiver;->this$0:Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget$PlayGamesWidgetResultReceiver;->this$0:Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;

    invoke-static {p0, p2}, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;->access$000(Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;Landroid/os/Bundle;)V

    return-void
.end method
