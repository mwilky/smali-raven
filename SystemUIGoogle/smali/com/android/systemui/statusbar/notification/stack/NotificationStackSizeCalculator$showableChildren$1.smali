.class final Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$showableChildren$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NotificationStackSizeCalculator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$showableChildren$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator$showableChildren$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->onLockscreen()Z

    move-result p0

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->isShowable(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method