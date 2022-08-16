.class final Lcom/android/systemui/qs/FgsManagerController$UserPackage$uid$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FgsManagerController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/FgsManagerController$UserPackage;-><init>(Lcom/android/systemui/qs/FgsManagerController;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/FgsManagerController;

.field public final synthetic this$1:Lcom/android/systemui/qs/FgsManagerController$UserPackage;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/FgsManagerController;Lcom/android/systemui/qs/FgsManagerController$UserPackage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerController$UserPackage$uid$2;->this$0:Lcom/android/systemui/qs/FgsManagerController;

    iput-object p2, p0, Lcom/android/systemui/qs/FgsManagerController$UserPackage$uid$2;->this$1:Lcom/android/systemui/qs/FgsManagerController$UserPackage;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerController$UserPackage$uid$2;->this$0:Lcom/android/systemui/qs/FgsManagerController;

    iget-object v0, v0, Lcom/android/systemui/qs/FgsManagerController;->packageManager:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerController$UserPackage$uid$2;->this$1:Lcom/android/systemui/qs/FgsManagerController$UserPackage;

    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->packageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->userId:I

    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
