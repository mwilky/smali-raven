.class public final Lcom/android/systemui/statusbar/notification/NotificationListController$1;
.super Ljava/lang/Object;
.source "NotificationListController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationEntryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/NotificationListController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/NotificationListController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationListController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationListController$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationListController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationListController$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationListController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationListController;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->cleanUpViewStateForEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method
