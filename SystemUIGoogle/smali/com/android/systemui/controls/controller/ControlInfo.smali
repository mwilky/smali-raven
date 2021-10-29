.class public final Lcom/android/systemui/controls/controller/ControlInfo;
.super Ljava/lang/Object;
.source "ControlInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/controller/ControlInfo$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/controls/controller/ControlInfo$Companion;


# instance fields
.field private final controlId:Ljava/lang/String;

.field private final controlSubtitle:Ljava/lang/CharSequence;

.field private final controlTitle:Ljava/lang/CharSequence;

.field private final deviceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/controller/ControlInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/controller/ControlInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/controller/ControlInfo;->Companion:Lcom/android/systemui/controls/controller/ControlInfo$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 1

    const-string v0, "controlId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlTitle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlSubtitle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlInfo;->controlTitle:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlInfo;->controlSubtitle:Ljava/lang/CharSequence;

    iput p4, p0, Lcom/android/systemui/controls/controller/ControlInfo;->deviceType:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/controls/controller/ControlInfo;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/Object;)Lcom/android/systemui/controls/controller/ControlInfo;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/android/systemui/controls/controller/ControlInfo;->controlTitle:Ljava/lang/CharSequence;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/android/systemui/controls/controller/ControlInfo;->controlSubtitle:Ljava/lang/CharSequence;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/android/systemui/controls/controller/ControlInfo;->deviceType:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/controls/controller/ControlInfo;->copy(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Lcom/android/systemui/controls/controller/ControlInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Lcom/android/systemui/controls/controller/ControlInfo;
    .locals 0

    const-string p0, "controlId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "controlTitle"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "controlSubtitle"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/systemui/controls/controller/ControlInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/controls/controller/ControlInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/controls/controller/ControlInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/controls/controller/ControlInfo;

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlInfo;->controlTitle:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/controls/controller/ControlInfo;->controlTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlInfo;->controlSubtitle:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/controls/controller/ControlInfo;->controlSubtitle:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/android/systemui/controls/controller/ControlInfo;->deviceType:I

    iget p1, p1, Lcom/android/systemui/controls/controller/ControlInfo;->deviceType:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getControlId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    return-object p0
.end method

.method public final getControlSubtitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlInfo;->controlSubtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getControlTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlInfo;->controlTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getDeviceType()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/controls/controller/ControlInfo;->deviceType:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlInfo;->controlTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlInfo;->controlSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/systemui/controls/controller/ControlInfo;->deviceType:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlInfo;->controlTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/controls/controller/ControlInfo;->deviceType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
