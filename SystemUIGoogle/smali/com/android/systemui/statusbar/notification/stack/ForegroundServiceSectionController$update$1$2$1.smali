.class final Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$update$1$2$1;
.super Ljava/lang/Object;
.source "ForegroundServiceSectionController.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $child:Lcom/android/systemui/statusbar/notification/row/DungeonRow;

.field final synthetic $entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;Lcom/android/systemui/statusbar/notification/row/DungeonRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$update$1$2$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$update$1$2$1;->$child:Lcom/android/systemui/statusbar/notification/row/DungeonRow;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$update$1$2$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$update$1$2$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$update$1$2$1;->$child:Lcom/android/systemui/statusbar/notification/row/DungeonRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/DungeonRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->access$removeEntry(Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$update$1$2$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->access$update(Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$update$1$2$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->unDismiss()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$update$1$2$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->resetTranslation()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController$update$1$2$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->getEntryManager()Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object p0

    const-string p1, "ForegroundServiceSectionController.onClick"

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications(Ljava/lang/String;)V

    return-void
.end method
