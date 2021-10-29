.class public Lcom/google/android/systemui/dreamliner/DockAlignInfo;
.super Ljava/lang/Object;
.source "DockAlignInfo.java"


# instance fields
.field private final mAlignPct:I

.field private final mAlignState:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/systemui/dreamliner/DockAlignInfo;->mAlignState:I

    iput p2, p0, Lcom/google/android/systemui/dreamliner/DockAlignInfo;->mAlignPct:I

    return-void
.end method


# virtual methods
.method public getAlignPct()I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/dreamliner/DockAlignInfo;->mAlignPct:I

    return p0
.end method

.method public getAlignState()I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/dreamliner/DockAlignInfo;->mAlignState:I

    return p0
.end method
