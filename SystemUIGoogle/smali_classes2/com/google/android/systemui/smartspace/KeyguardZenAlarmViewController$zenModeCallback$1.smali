.class public final Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$zenModeCallback$1;
.super Ljava/lang/Object;
.source "KeyguardZenAlarmViewController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;Lcom/android/systemui/statusbar/policy/ZenModeController;Landroid/app/AlarmManager;Lcom/android/systemui/statusbar/policy/NextAlarmController;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$zenModeCallback$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZenChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$zenModeCallback$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->updateDnd()V

    return-void
.end method
