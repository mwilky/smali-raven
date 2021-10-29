.class Lcom/google/android/systemui/smartspace/SmartSpaceController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SmartSpaceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/smartspace/SmartSpaceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$1;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$1;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-static {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->access$000(Lcom/google/android/systemui/smartspace/SmartSpaceController;)Lcom/google/android/systemui/smartspace/SmartSpaceData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$1;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-static {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->access$000(Lcom/google/android/systemui/smartspace/SmartSpaceController;)Lcom/google/android/systemui/smartspace/SmartSpaceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->hasCurrent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$1;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-static {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->access$000(Lcom/google/android/systemui/smartspace/SmartSpaceController;)Lcom/google/android/systemui/smartspace/SmartSpaceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->getExpirationRemainingMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$1;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-static {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->access$100(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V

    :cond_0
    return-void
.end method
