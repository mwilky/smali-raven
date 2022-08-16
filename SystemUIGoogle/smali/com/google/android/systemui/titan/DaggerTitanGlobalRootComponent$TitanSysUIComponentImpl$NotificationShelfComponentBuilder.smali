.class public final Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$NotificationShelfComponentBuilder;
.super Ljava/lang/Object;
.source "DaggerTitanGlobalRootComponent.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NotificationShelfComponentBuilder"
.end annotation


# instance fields
.field public notificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

.field public final synthetic this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$NotificationShelfComponentBuilder;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent;
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$NotificationShelfComponentBuilder;->notificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    const-class v1, Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-static {v1, v0}, Lcom/android/systemui/R$menu;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$NotificationShelfComponentImpl;

    iget-object v1, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$NotificationShelfComponentBuilder;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$NotificationShelfComponentBuilder;->notificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-direct {v0, v1, p0}, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$NotificationShelfComponentImpl;-><init>(Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;Lcom/android/systemui/statusbar/NotificationShelf;)V

    return-object v0
.end method

.method public final notificationShelf(Lcom/android/systemui/statusbar/NotificationShelf;)Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$NotificationShelfComponentBuilder;->notificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    return-object p0
.end method
