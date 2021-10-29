.class public final Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController$ISmartspaceTransitionController$1;
.super Lcom/android/systemui/shared/system/smartspace/ISmartspaceTransitionController$Stub;
.source "SmartspaceTransitionController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController$ISmartspaceTransitionController$1;->this$0:Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/smartspace/ISmartspaceTransitionController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public setSmartspace(Lcom/android/systemui/shared/system/smartspace/ISmartspaceCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController$ISmartspaceTransitionController$1;->this$0:Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->setLauncherSmartspace(Lcom/android/systemui/shared/system/smartspace/ISmartspaceCallback;)V

    iget-object p0, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController$ISmartspaceTransitionController$1;->this$0:Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->updateLauncherSmartSpaceState()Lcom/android/systemui/shared/system/smartspace/SmartspaceState;

    return-void
.end method
