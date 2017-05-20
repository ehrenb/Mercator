.class Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewSuggestedAppsWidget$1;
.super Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;
.source "AppViewSuggestedAppsWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewSuggestedAppsWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewSuggestedAppsDisplayable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewSuggestedAppsWidget;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewSuggestedAppsWidget;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewSuggestedAppsWidget$1;->this$0:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewSuggestedAppsWidget;

    invoke-direct {p0, p2}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;->getItemCount()I

    move-result v0

    return v0
.end method
