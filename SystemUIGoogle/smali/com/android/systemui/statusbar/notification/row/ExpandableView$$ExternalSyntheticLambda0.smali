.class public final synthetic Lcom/android/systemui/statusbar/notification/row/ExpandableView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field public final synthetic f$1:Ljava/io/FileDescriptor;

.field public final synthetic f$2:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView$$ExternalSyntheticLambda0;->f$1:Ljava/io/FileDescriptor;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView$$ExternalSyntheticLambda0;->f$2:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView$$ExternalSyntheticLambda0;->f$1:Ljava/io/FileDescriptor;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView$$ExternalSyntheticLambda0;->f$2:[Ljava/lang/String;

    check-cast p1, Landroid/util/IndentingPrintWriter;

    invoke-static {v0, v1, p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->$r8$lambda$8lP5DDf0j4bA8CP9zwcMiMXJ3f0(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    return-void
.end method