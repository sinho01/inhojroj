


app_name = "profileapp"

urlpatterns = [
    path('delete/<int:pk>', AccountDeleteView.as_view(), name='delete'),
]