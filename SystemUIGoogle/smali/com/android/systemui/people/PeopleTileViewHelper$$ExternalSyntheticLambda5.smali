.class public final synthetic Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda5;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda5;

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

    check-cast p1, Landroid/app/people/ConversationStatus;

    invoke-static {p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->$r8$lambda$JZy-TDHh4xSyzClZIoEMVG41tqY(Landroid/app/people/ConversationStatus;)Z

    move-result p0

    return p0
.end method
