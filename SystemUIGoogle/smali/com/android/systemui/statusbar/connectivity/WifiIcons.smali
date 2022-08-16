.class public final Lcom/android/systemui/statusbar/connectivity/WifiIcons;
.super Ljava/lang/Object;
.source "WifiIcons.java"


# static fields
.field public static final UNMERGED_WIFI:Lcom/android/settingslib/SignalIcon$IconGroup;

.field public static final WIFI_LEVEL_COUNT:I


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    new-array v2, v0, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x2

    new-array v7, v3, [[I

    const/4 v3, 0x0

    aput-object v2, v7, v3

    const/4 v2, 0x1

    aput-object v1, v7, v2

    sput v0, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->WIFI_LEVEL_COUNT:I

    new-instance v0, Lcom/android/settingslib/SignalIcon$IconGroup;

    sget-object v8, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;->WIFI_CONNECTION_STRENGTH:[I

    const-string v5, "Wi-Fi Icons"

    const v9, 0x1080571

    const v10, 0x1080571

    const v11, 0x1080571

    const v12, 0x1080571

    const v13, 0x7f130089

    move-object v4, v0

    move-object v6, v7

    invoke-direct/range {v4 .. v13}, Lcom/android/settingslib/SignalIcon$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    sput-object v0, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->UNMERGED_WIFI:Lcom/android/settingslib/SignalIcon$IconGroup;

    return-void

    nop

    :array_0
    .array-data 4
        0x1080571
        0x1080572
        0x1080573
        0x1080574
        0x1080575
    .end array-data

    :array_1
    .array-data 4
        0x7f080627
        0x7f080628
        0x7f080629
        0x7f08062a
        0x7f08062b
    .end array-data
.end method
