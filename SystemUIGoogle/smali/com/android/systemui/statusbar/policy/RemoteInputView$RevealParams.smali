.class public final Lcom/android/systemui/statusbar/policy/RemoteInputView$RevealParams;
.super Ljava/lang/Object;
.source "RemoteInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/RemoteInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RevealParams"
.end annotation


# instance fields
.field public final centerX:I

.field public final centerY:I

.field public final radius:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RevealParams;->centerX:I

    iput p2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RevealParams;->centerY:I

    iput p3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RevealParams;->radius:I

    return-void
.end method
