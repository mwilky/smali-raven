.class public final synthetic Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda7;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda7;-><init>()V

    sput-object v0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda7;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/content/pm/UserInfo;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result p0

    return p0
.end method
