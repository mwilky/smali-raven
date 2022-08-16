.class public final Lkotlinx/coroutines/internal/LockFreeLinkedListKt;
.super Ljava/lang/Object;
.source "LockFreeLinkedList.kt"


# static fields
.field public static final CONDITION_FALSE:Lkotlinx/coroutines/internal/Symbol;

.field public static final ETHERNET_CONNECTION_VALUES:[I

.field public static final PHONE_SIGNAL_STRENGTH:[I

.field public static final WIFI_CONNECTION_STRENGTH:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;->PHONE_SIGNAL_STRENGTH:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;->WIFI_CONNECTION_STRENGTH:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;->ETHERNET_CONNECTION_VALUES:[I

    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "CONDITION_FALSE"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;->CONDITION_FALSE:Lkotlinx/coroutines/internal/Symbol;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f130088
        0x7f13008e
        0x7f130091
        0x7f130090
        0x7f13008f
    .end array-data

    :array_1
    .array-data 4
        0x7f130089
        0x7f1300c4
        0x7f1300c9
        0x7f1300c8
        0x7f1300c7
    .end array-data

    :array_2
    .array-data 4
        0x7f13006d
        0x7f13006c
    .end array-data
.end method
