.class public final synthetic Lcom/android/settings/datausage/ChartDataUsagePreference$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/datausage/ChartDataUsagePreference$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/datausage/ChartDataUsagePreference$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/settings/datausage/ChartDataUsagePreference$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/ChartDataUsagePreference$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/settings/datausage/ChartDataUsagePreference$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;

    invoke-virtual {p1}, Lcom/android/settings/datausage/ChartDataUsagePreference$DataUsageSummaryNode;->getDataUsagePercentage()I

    move-result p0

    return p0
.end method
