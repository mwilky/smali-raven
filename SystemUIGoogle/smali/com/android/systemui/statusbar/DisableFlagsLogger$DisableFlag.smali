.class public final Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableFlag;
.super Ljava/lang/Object;
.source "DisableFlagsLogger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/DisableFlagsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisableFlag"
.end annotation


# instance fields
.field private final bitMask:I

.field private final flagIsSetSymbol:C

.field private final flagNotSetSymbol:C


# direct methods
.method public constructor <init>(ICC)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableFlag;->bitMask:I

    iput-char p2, p0, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableFlag;->flagIsSetSymbol:C

    iput-char p3, p0, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableFlag;->flagNotSetSymbol:C

    return-void
.end method


# virtual methods
.method public final getFlagStatus$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)C
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableFlag;->bitMask:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    iget-char p0, p0, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableFlag;->flagIsSetSymbol:C

    goto :goto_0

    :cond_0
    iget-char p0, p0, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableFlag;->flagNotSetSymbol:C

    :goto_0
    return p0
.end method
