.class public final Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl$attachToLegacyPipeline$1;
.super Ljava/lang/Object;
.source "BindEventManagerImpl.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationEntryListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl$attachToLegacyPipeline$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEntryInflated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl$attachToLegacyPipeline$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;->notifyViewBound(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public final onEntryReinflated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl$attachToLegacyPipeline$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;->notifyViewBound(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method
