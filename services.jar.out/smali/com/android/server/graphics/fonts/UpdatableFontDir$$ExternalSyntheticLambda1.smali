.class public final synthetic Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
