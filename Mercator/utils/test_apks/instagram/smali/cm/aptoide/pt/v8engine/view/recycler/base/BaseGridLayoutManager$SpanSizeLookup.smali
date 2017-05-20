.class Lcm/aptoide/pt/v8engine/view/recycler/base/BaseGridLayoutManager$SpanSizeLookup;
.super Landroid/support/v7/widget/GridLayoutManager$c;
.source "BaseGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/view/recycler/base/BaseGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpanSizeLookup"
.end annotation


# instance fields
.field private final baseAdapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

.field final synthetic this$0:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseGridLayoutManager;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseGridLayoutManager;Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseGridLayoutManager$SpanSizeLookup;->this$0:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseGridLayoutManager;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$c;-><init>()V

    .line 29
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseGridLayoutManager$SpanSizeLookup;->baseAdapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    .line 30
    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 5

    .prologue
    .line 33
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseGridLayoutManager$SpanSizeLookup;->baseAdapter:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->getDisplayable(I)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    move-result-object v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x1

    .line 47
    :goto_0
    return v0

    .line 38
    :cond_0
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;->getSpanSize()I

    move-result v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseGridLayoutManager$SpanSizeLookup;->this$0:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseGridLayoutManager;

    invoke-virtual {v2}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseGridLayoutManager;->getSpanCount()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 39
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;->getSpanSize()I

    move-result v0

    goto :goto_0

    .line 41
    :cond_1
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Displayable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " at position "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " spanSize > getSpanCount()! "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1, v2}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 47
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseGridLayoutManager$SpanSizeLookup;->this$0:Lcm/aptoide/pt/v8engine/view/recycler/base/BaseGridLayoutManager;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseGridLayoutManager;->getSpanCount()I

    move-result v0

    goto :goto_0
.end method
