.class public final synthetic Lcom/android/settings/deviceinfo/StorageCategoryFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/deviceinfo/StorageCategoryFragment$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/deviceinfo/StorageCategoryFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/StorageCategoryFragment$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/StorageCategoryFragment$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/settings/deviceinfo/StorageCategoryFragment$$ExternalSyntheticLambda0;

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

    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/StorageCategoryFragment;->$r8$lambda$CkniPzAwAWbcTOQ2I9v6wOALGsI(Lcom/android/settingslib/core/AbstractPreferenceController;)Lcom/android/settings/deviceinfo/storage/SecondaryUserController;

    move-result-object p0

    return-object p0
.end method
