.class public final Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory$Companion;
.super Ljava/lang/Object;
.source "InternetDialogFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInternetDialog()Lcom/android/systemui/qs/tiles/dialog/InternetDialog;
    .locals 0

    invoke-static {}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;->access$getInternetDialog$cp()Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    move-result-object p0

    return-object p0
.end method

.method public final setInternetDialog(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;->access$setInternetDialog$cp(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V

    return-void
.end method
