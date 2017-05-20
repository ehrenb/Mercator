.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;

.field private final arg$2:Lcm/aptoide/pt/model/v7/Malware;

.field private final arg$3:Lcm/aptoide/pt/model/v7/GetAppMeta$App;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;Lcm/aptoide/pt/model/v7/Malware;Lcm/aptoide/pt/model/v7/GetAppMeta$App;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader$$Lambda$1;->arg$2:Lcm/aptoide/pt/model/v7/Malware;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader$$Lambda$1;->arg$3:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;Lcm/aptoide/pt/model/v7/Malware;Lcm/aptoide/pt/model/v7/GetAppMeta$App;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader$$Lambda$1;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader$$Lambda$1;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;Lcm/aptoide/pt/model/v7/Malware;Lcm/aptoide/pt/model/v7/GetAppMeta$App;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader$$Lambda$1;->arg$2:Lcm/aptoide/pt/model/v7/Malware;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader$$Lambda$1;->arg$3:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    invoke-virtual {v0, v1, v2, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$AppViewHeader;->lambda$setup$0(Lcm/aptoide/pt/model/v7/Malware;Lcm/aptoide/pt/model/v7/GetAppMeta$App;Landroid/view/View;)V

    return-void
.end method
