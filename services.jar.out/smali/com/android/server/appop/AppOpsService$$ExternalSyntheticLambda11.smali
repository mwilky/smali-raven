.class public final synthetic Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/function/UndecConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda11;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda11;-><init>()V

    sput-object v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda11;->INSTANCE:Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda11;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/appop/AppOpsService;

    check-cast p2, Landroid/util/ArraySet;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    check-cast p5, Ljava/lang/String;

    check-cast p6, Ljava/lang/String;

    check-cast p7, Ljava/lang/Integer;

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p7

    check-cast p8, Ljava/lang/Integer;

    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result p8

    check-cast p9, Ljava/lang/Integer;

    invoke-virtual {p9}, Ljava/lang/Integer;->intValue()I

    move-result p9

    check-cast p10, Ljava/lang/Integer;

    invoke-virtual {p10}, Ljava/lang/Integer;->intValue()I

    move-result p10

    check-cast p11, Ljava/lang/Integer;

    invoke-virtual {p11}, Ljava/lang/Integer;->intValue()I

    move-result p11

    move-object p0, p1

    move-object p1, p2

    move p2, p3

    move p3, p4

    move-object p4, p5

    move-object p5, p6

    move p6, p7

    move p7, p8

    move p8, p9

    move p9, p10

    move p10, p11

    invoke-static/range {p0 .. p10}, Lcom/android/server/appop/AppOpsService;->$r8$lambda$y2H8_9L2D3J-gli7MqsLRngTgtU(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;IIIII)V

    return-void
.end method
