import 'package:bloc/bloc.dart';
import 'package:fruts_store/core/entitys/ProductEntity.dart';
import 'package:fruts_store/core/repos/product_repo/product_repo.dart';
import 'package:meta/meta.dart';
part 'product_cubit_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this.productRepo) : super(ProductCubitInitial());
  final ProductRepo productRepo;
    int productleanth=0;

  Future<void> getProducts() async {
    emit(ProductCubitLoading());
    final result = await productRepo.getProduct();
    result.fold((failur) => emit(ProductCubitFailure(failur.message)),

          (products) => emit(ProductCubitSuccess(products)),
    );
  }
     

  Future<void>getBestSellingProduct()async {
    emit(ProductCubitLoading());
    final result = await productRepo.getBestSellingProduct();
    result.fold(
            (failur) => emit(ProductCubitFailure(failur.message)),
            (products) {
              productleanth +=  products.length;
              emit(ProductCubitSuccess(products));

            }
    );
  }
}
