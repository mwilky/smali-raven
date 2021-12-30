.class public final synthetic Lcom/google/android/settings/security/SecurityHubDashboard$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/settings/security/SecurityHubDashboard$$ExternalSyntheticLambda5;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/settings/security/SecurityHubDashboard$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/google/android/settings/security/SecurityHubDashboard$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Lcom/google/android/settings/security/SecurityHubDashboard$$ExternalSyntheticLambda5;->INSTANCE:Lcom/google/android/settings/security/SecurityHubDashboard$$ExternalSyntheticLambda5;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
