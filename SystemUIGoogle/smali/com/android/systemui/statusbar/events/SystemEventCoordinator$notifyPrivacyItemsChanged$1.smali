.class final Lcom/android/systemui/statusbar/events/SystemEventCoordinator$notifyPrivacyItemsChanged$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SystemEventCoordinator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->notifyPrivacyItemsChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $event:Lcom/android/systemui/statusbar/events/PrivacyEvent;

.field final synthetic this$0:Lcom/android/systemui/statusbar/events/SystemEventCoordinator;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/events/SystemEventCoordinator;Lcom/android/systemui/statusbar/events/PrivacyEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$notifyPrivacyItemsChanged$1;->this$0:Lcom/android/systemui/statusbar/events/SystemEventCoordinator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$notifyPrivacyItemsChanged$1;->$event:Lcom/android/systemui/statusbar/events/PrivacyEvent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$notifyPrivacyItemsChanged$1;->invoke()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/android/systemui/privacy/PrivacyChipBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$notifyPrivacyItemsChanged$1;->this$0:Lcom/android/systemui/statusbar/events/SystemEventCoordinator;

    invoke-static {v1}, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->access$getContext$p(Lcom/android/systemui/statusbar/events/SystemEventCoordinator;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$notifyPrivacyItemsChanged$1;->$event:Lcom/android/systemui/statusbar/events/PrivacyEvent;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/events/PrivacyEvent;->getPrivacyItems()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/privacy/PrivacyChipBuilder;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/android/systemui/privacy/PrivacyChipBuilder;->joinTypes()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$notifyPrivacyItemsChanged$1;->this$0:Lcom/android/systemui/statusbar/events/SystemEventCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->access$getContext$p(Lcom/android/systemui/statusbar/events/SystemEventCoordinator;)Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$string;->ongoing_privacy_chip_content_multiple_apps:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
