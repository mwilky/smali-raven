.class public final synthetic Lcom/android/systemui/power/PowerNotificationWarnings$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/power/PowerNotificationWarnings$2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/power/PowerNotificationWarnings$2;

    return-void
.end method


# virtual methods
.method public final onActivityStarted(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/power/PowerNotificationWarnings$2;

    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$2;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mThermalShutdownDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-void
.end method
