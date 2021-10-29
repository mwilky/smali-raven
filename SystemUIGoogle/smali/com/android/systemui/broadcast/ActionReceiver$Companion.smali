.class public final Lcom/android/systemui/broadcast/ActionReceiver$Companion;
.super Ljava/lang/Object;
.source "ActionReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/broadcast/ActionReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/broadcast/ActionReceiver$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIndex()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    invoke-static {}, Lcom/android/systemui/broadcast/ActionReceiver;->access$getIndex$cp()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    return-object p0
.end method
