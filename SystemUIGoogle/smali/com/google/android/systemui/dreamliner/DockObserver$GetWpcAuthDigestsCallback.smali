.class final Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthDigestsCallback;
.super Ljava/lang/Object;
.source "DockObserver.java"

# interfaces
.implements Lcom/google/android/systemui/dreamliner/WirelessCharger$GetWpcAuthDigestsCallback;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/dreamliner/DockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GetWpcAuthDigestsCallback"
.end annotation


# instance fields
.field public final mResultReceiver:Landroid/os/ResultReceiver;

.field public final synthetic this$0:Lcom/google/android/systemui/dreamliner/DockObserver;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthDigestsCallback;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthDigestsCallback;->mResultReceiver:Landroid/os/ResultReceiver;

    return-void
.end method


# virtual methods
.method public final onCallback(IBBLjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IBB",
            "Ljava/util/ArrayList<",
            "[B>;)V"
        }
    .end annotation

    const-string v0, "GWAD() result: "

    const-string v1, "DLObserver"

    invoke-static {v0, p1, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline1;->m(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "GWAD() response: pm="

    const-string v0, ", rm="

    const-string v2, ", d="

    invoke-static {p1, p2, v0, p3, v2}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline1;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthDigestsCallback;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthDigestsCallback;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "slot_populated_mask"

    invoke-virtual {p0, v1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string/jumbo p2, "slot_returned_mask"

    invoke-virtual {p0, p2, p3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance p3, Lcom/android/systemui/statusbar/StatusBarIconView$$ExternalSyntheticLambda1;

    const/4 v1, 0x3

    invoke-direct {p3, v1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    const-string/jumbo p3, "wpc_digests"

    invoke-virtual {p0, p3, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthDigestsCallback;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :goto_0
    return-void
.end method
