.class public final Lcom/android/systemui/qs/FgsManagerController$UserPackage;
.super Ljava/lang/Object;
.source "FgsManagerController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/FgsManagerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UserPackage"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFgsManagerController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FgsManagerController.kt\ncom/android/systemui/qs/FgsManagerController$UserPackage\n+ 2 ConvenienceExtensions.kt\ncom/android/systemui/util/ConvenienceExtensionsKt\n*L\n1#1,623:1\n45#2,4:624\n*S KotlinDebug\n*F\n+ 1 FgsManagerController.kt\ncom/android/systemui/qs/FgsManagerController$UserPackage\n*L\n496#1:624,4\n*E\n"
.end annotation


# instance fields
.field public backgroundRestrictionExemptionReason:I

.field public final packageName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/qs/FgsManagerController;

.field public uiControl:Lcom/android/systemui/qs/FgsManagerController$UIControl;

.field public uiControlInitialized:Z

.field public final uid$delegate:Lkotlin/Lazy;

.field public final userId:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/FgsManagerController;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->this$0:Lcom/android/systemui/qs/FgsManagerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->userId:I

    iput-object p3, p0, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->packageName:Ljava/lang/String;

    new-instance p2, Lcom/android/systemui/qs/FgsManagerController$UserPackage$uid$2;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/qs/FgsManagerController$UserPackage$uid$2;-><init>(Lcom/android/systemui/qs/FgsManagerController;Lcom/android/systemui/qs/FgsManagerController$UserPackage;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->uid$delegate:Lkotlin/Lazy;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->backgroundRestrictionExemptionReason:I

    sget-object p1, Lcom/android/systemui/qs/FgsManagerController$UIControl;->NORMAL:Lcom/android/systemui/qs/FgsManagerController$UIControl;

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->uiControl:Lcom/android/systemui/qs/FgsManagerController$UIControl;

    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 2

    const-string v0, "UserPackage: ["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget v0, p0, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "userId="

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "packageName="

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uiControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->uiControlInitialized:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->updateUiControl()V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->uiControl:Lcom/android/systemui/qs/FgsManagerController$UIControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->backgroundRestrictionExemptionReason:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/systemui/qs/FgsManagerController$UserPackage;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/systemui/qs/FgsManagerController$UserPackage;

    iget-object v0, p1, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->packageName:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p1, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->userId:I

    iget p0, p0, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->userId:I

    if-ne p1, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->packageName:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final updateUiControl()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->this$0:Lcom/android/systemui/qs/FgsManagerController;

    iget-object v0, v0, Lcom/android/systemui/qs/FgsManagerController;->activityManager:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->uid$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getBackgroundRestrictionExemptionReason(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->backgroundRestrictionExemptionReason:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0x33

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x13e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x140

    if-eq v0, v1, :cond_1

    const/16 v1, 0x37

    if-eq v0, v1, :cond_1

    const/16 v1, 0x38

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/android/systemui/qs/FgsManagerController$UIControl;->NORMAL:Lcom/android/systemui/qs/FgsManagerController$UIControl;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/qs/FgsManagerController$UIControl;->HIDE_ENTRY:Lcom/android/systemui/qs/FgsManagerController$UIControl;

    goto :goto_0

    :cond_1
    :pswitch_0
    sget-object v0, Lcom/android/systemui/qs/FgsManagerController$UIControl;->HIDE_BUTTON:Lcom/android/systemui/qs/FgsManagerController$UIControl;

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->uiControl:Lcom/android/systemui/qs/FgsManagerController$UIControl;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->uiControlInitialized:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x142
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
