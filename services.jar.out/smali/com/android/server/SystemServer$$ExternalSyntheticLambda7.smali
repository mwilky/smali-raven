.class public final synthetic Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;-><init>()V

    sput-object v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/android/server/SystemServer;->lambda$startOtherServices$1()V

    return-void
.end method
