.class public final Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetFeaturesCallbackWrapper;
.super Ljava/lang/Object;
.source "WirelessChargerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetFeaturesCallbackWrapper"
.end annotation


# instance fields
.field public final mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$GetFeaturesCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dreamliner/WirelessCharger$GetFeaturesCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetFeaturesCallbackWrapper;->mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$GetFeaturesCallback;

    return-void
.end method


# virtual methods
.method public final onValues(BJ)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetFeaturesCallbackWrapper;->mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$GetFeaturesCallback;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result p1

    check-cast p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFeaturesCallback;

    invoke-virtual {p0, p2, p3, p1}, Lcom/google/android/systemui/dreamliner/DockObserver$GetFeaturesCallback;->onCallback(JI)V

    return-void
.end method
