.class public Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;
.super Ljava/lang/Object;
.source "TunablePadding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/TunablePadding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TunablePaddingService"
.end annotation


# instance fields
.field private final mTunerService:Lcom/android/systemui/tuner/TunerService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tuner/TunerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    return-void
.end method
