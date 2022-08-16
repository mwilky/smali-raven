.class public final Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$IsDockPresentCallbackWrapper;
.super Ljava/lang/Object;
.source "WirelessChargerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IsDockPresentCallbackWrapper"
.end annotation


# instance fields
.field public final mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$IsDockPresentCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dreamliner/WirelessCharger$IsDockPresentCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$IsDockPresentCallbackWrapper;->mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$IsDockPresentCallback;

    return-void
.end method


# virtual methods
.method public final onValues(ZBBZI)V
    .locals 6

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$IsDockPresentCallbackWrapper;->mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$IsDockPresentCallback;

    move-object v0, p0

    check-cast v0, Lcom/google/android/systemui/dreamliner/DockObserver$IsDockPresentCallback;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/systemui/dreamliner/DockObserver$IsDockPresentCallback;->onCallback(ZBBZI)V

    return-void
.end method
