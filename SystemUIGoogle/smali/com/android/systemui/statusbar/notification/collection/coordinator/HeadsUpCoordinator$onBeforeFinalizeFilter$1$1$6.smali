.class final Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1$1$6;
.super Lkotlin/jvm/internal/Lambda;
.source "HeadsUpCoordinator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $logicalSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1$1$6;->$logicalSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->key:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1$1$6;->$logicalSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method