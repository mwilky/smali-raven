.class public final synthetic Lcom/android/systemui/wmshell/WMShellBaseModule$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/wmshell/WMShellBaseModule$$ExternalSyntheticLambda5;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/wmshell/WMShellBaseModule$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/systemui/wmshell/WMShellBaseModule$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Lcom/android/systemui/wmshell/WMShellBaseModule$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/systemui/wmshell/WMShellBaseModule$$ExternalSyntheticLambda5;

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

    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-static {p1}, Lcom/android/systemui/wmshell/WMShellBaseModule;->$r8$lambda$ZWzWi-edL4qKEr1J4wfmyetqM6Y(Lcom/android/wm/shell/splitscreen/SplitScreenController;)Lcom/android/wm/shell/splitscreen/SplitScreen;

    move-result-object p0

    return-object p0
.end method
