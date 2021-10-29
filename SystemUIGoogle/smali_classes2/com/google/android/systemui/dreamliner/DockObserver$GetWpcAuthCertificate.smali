.class Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthCertificate;
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
    name = "GetWpcAuthCertificate"
.end annotation


# instance fields
.field final mLength:S

.field final mOffset:S

.field final mResultReceiver:Landroid/os/ResultReceiver;

.field final mSlotNum:B

.field final synthetic this$0:Lcom/google/android/systemui/dreamliner/DockObserver;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;BSS)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthCertificate;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthCertificate;->mResultReceiver:Landroid/os/ResultReceiver;

    iput-byte p3, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthCertificate;->mSlotNum:B

    iput-short p4, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthCertificate;->mOffset:S

    iput-short p5, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthCertificate;->mLength:S

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthCertificate;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$100(Lcom/google/android/systemui/dreamliner/DockObserver;)Lcom/google/android/systemui/dreamliner/WirelessCharger;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthCertificate;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$100(Lcom/google/android/systemui/dreamliner/DockObserver;)Lcom/google/android/systemui/dreamliner/WirelessCharger;

    move-result-object v0

    iget-byte v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthCertificate;->mSlotNum:B

    iget-short v2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthCertificate;->mOffset:S

    iget-short v3, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthCertificate;->mLength:S

    new-instance v4, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthCertificateCallback;

    iget-object v5, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthCertificate;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthCertificate;->mResultReceiver:Landroid/os/ResultReceiver;

    invoke-direct {v4, v5, p0}, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthCertificateCallback;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/systemui/dreamliner/WirelessCharger;->getWpcAuthCertificate(BSSLcom/google/android/systemui/dreamliner/WirelessCharger$GetWpcAuthCertificateCallback;)V

    return-void
.end method
