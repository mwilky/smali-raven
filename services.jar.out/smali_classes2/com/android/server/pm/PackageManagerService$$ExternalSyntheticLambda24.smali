.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/pm/PackageManagerService$Injector$Producer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda24;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda24;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda24;->INSTANCE:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda24;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final produce(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerService;->lambda$main$21(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Landroid/util/DisplayMetrics;

    move-result-object p1

    return-object p1
.end method
