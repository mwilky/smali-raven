.class public final synthetic Lcom/android/systemui/wmshell/WMShellBaseModule$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/wmshell/WMShellBaseModule$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/wmshell/WMShellBaseModule$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/wmshell/WMShellBaseModule$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/systemui/wmshell/WMShellBaseModule$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/systemui/wmshell/WMShellBaseModule$$ExternalSyntheticLambda1;

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

    check-cast p1, Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p1}, Lcom/android/systemui/wmshell/WMShellBaseModule;->$r8$lambda$vwWfgr5HAI2TqVwGxUoWDb8Q5_4(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/Bubbles;

    move-result-object p0

    return-object p0
.end method
