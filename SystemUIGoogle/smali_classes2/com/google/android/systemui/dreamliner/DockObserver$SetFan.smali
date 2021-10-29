.class Lcom/google/android/systemui/dreamliner/DockObserver$SetFan;
.super Ljava/lang/Object;
.source "DockObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/dreamliner/DockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetFan"
.end annotation


# instance fields
.field final mFanId:B

.field final mFanMode:B

.field final mFanRpm:I

.field final synthetic this$0:Lcom/google/android/systemui/dreamliner/DockObserver;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dreamliner/DockObserver;BBI)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$SetFan;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$SetFan;->mFanId:B

    iput-byte p3, p0, Lcom/google/android/systemui/dreamliner/DockObserver$SetFan;->mFanMode:B

    iput p4, p0, Lcom/google/android/systemui/dreamliner/DockObserver$SetFan;->mFanRpm:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$SetFan;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$100(Lcom/google/android/systemui/dreamliner/DockObserver;)Lcom/google/android/systemui/dreamliner/WirelessCharger;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$SetFan;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$100(Lcom/google/android/systemui/dreamliner/DockObserver;)Lcom/google/android/systemui/dreamliner/WirelessCharger;

    move-result-object v0

    iget-byte v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$SetFan;->mFanId:B

    iget-byte v2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$SetFan;->mFanMode:B

    iget p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$SetFan;->mFanRpm:I

    new-instance v3, Lcom/google/android/systemui/dreamliner/DockObserver$SetFanCallback;

    invoke-direct {v3}, Lcom/google/android/systemui/dreamliner/DockObserver$SetFanCallback;-><init>()V

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/google/android/systemui/dreamliner/WirelessCharger;->setFan(BBILcom/google/android/systemui/dreamliner/WirelessCharger$SetFanCallback;)V

    return-void
.end method
