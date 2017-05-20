.class final Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader$WidgetMeta;
.super Ljava/lang/Object;
.source "WidgetLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WidgetMeta"
.end annotation


# instance fields
.field private final displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

.field private final displayableClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;"
        }
    .end annotation
.end field

.field private final widgetClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader$WidgetMeta;->widgetClass:Ljava/lang/Class;

    .line 160
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader$WidgetMeta;->displayableClass:Ljava/lang/Class;

    .line 161
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader$WidgetMeta;->newDisplayable()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader$WidgetMeta;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader$WidgetMeta;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader$WidgetMeta;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    return-object v0
.end method

.method static synthetic access$100(Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader$WidgetMeta;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader$WidgetMeta;->widgetClass:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public newDisplayable()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
    .locals 2

    .prologue
    .line 166
    :try_start_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/WidgetLoader$WidgetMeta;->displayableClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error instantiating Displayable!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
