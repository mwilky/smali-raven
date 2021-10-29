.class Lcom/google/android/systemui/gamedashboard/GameModeDndController$1;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "GameModeDndController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/gamedashboard/GameModeDndController;-><init>(Landroid/content/Context;Landroid/app/NotificationManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/gamedashboard/GameModeDndController;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/gamedashboard/GameModeDndController;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController$1;->this$0:Lcom/google/android/systemui/gamedashboard/GameModeDndController;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController$1;->this$0:Lcom/google/android/systemui/gamedashboard/GameModeDndController;

    invoke-static {p0}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->access$100(Lcom/google/android/systemui/gamedashboard/GameModeDndController;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->access$002(Lcom/google/android/systemui/gamedashboard/GameModeDndController;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
