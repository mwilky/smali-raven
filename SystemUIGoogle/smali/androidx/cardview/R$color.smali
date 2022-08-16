.class public Landroidx/cardview/R$color;
.super Ljava/lang/Object;
.source "R.java"

# interfaces
.implements Lcom/android/systemui/monet/Hue;


# static fields
.field public static final RecyclerView:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/cardview/R$color;->RecyclerView:[I

    return-void

    :array_0
    .array-data 4
        0x10100c4
        0x10100eb
        0x10100f1
        0x7f0401dd
        0x7f0401de
        0x7f0401df
        0x7f0401e0
        0x7f0401e1
        0x7f0402d1
        0x7f040444
        0x7f04049d
        0x7f0404a3
    .end array-data
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/app/smartspace/SmartspaceTarget;)I
    .locals 2

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/transition/R$id;->hash(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroidx/transition/R$id;->hash(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTarget;->getCreationTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/transition/R$id;->hash(Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public get(Lcom/android/internal/graphics/cam/Cam;)D
    .locals 4

    invoke-virtual {p1}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    move-result p0

    float-to-double p0, p0

    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    sub-double/2addr p0, v0

    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    const/16 v1, 0x168

    if-gez v0, :cond_0

    int-to-double v0, v1

    rem-double/2addr p0, v0

    add-double/2addr p0, v0

    goto :goto_0

    :cond_0
    const-wide v2, 0x4076800000000000L    # 360.0

    cmpl-double v0, p0, v2

    if-ltz v0, :cond_1

    int-to-double v0, v1

    rem-double/2addr p0, v0

    :cond_1
    :goto_0
    return-wide p0
.end method
