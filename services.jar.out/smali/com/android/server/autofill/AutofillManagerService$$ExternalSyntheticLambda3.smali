.class public final synthetic Lcom/android/server/autofill/AutofillManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/infra/AbstractMasterSystemService$Visitor;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/autofill/AutofillManagerService$$ExternalSyntheticLambda3;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/autofill/AutofillManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/autofill/AutofillManagerService$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/android/server/autofill/AutofillManagerService$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/server/autofill/AutofillManagerService$$ExternalSyntheticLambda3;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final visit(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-static {p1}, Lcom/android/server/autofill/AutofillManagerService;->lambda$reset$4(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V

    return-void
.end method
